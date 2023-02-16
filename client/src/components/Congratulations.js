import React from 'react'
import confeti from '../assests/images/confeti.png'
import { useNavigate } from "react-router-dom";

function Congratulations() {
    let navigate = useNavigate();
    
  return (
    <div className='congrats'>
        <div>
            <h1>Congratulations!</h1>
        </div>
        <div>
            <h5>New Assesment has been created</h5>
        </div>
        <div>
            <img src={confeti} alt='Yey'/>
           
        </div>
        <button onClick={()=>{navigate("/assessments")}}>CLOSE</button>
    </div>
  )
}

export default Congratulations